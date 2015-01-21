.class Lcom/android/mms/ui/ComposeMessageActivity$113;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showMmsOrSmsConvertToIpMessageDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$bCheckEcmMode:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12725
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$113;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$113;->val$bCheckEcmMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 12730
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$113;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$113;->val$bCheckEcmMode:Z

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendLongMessageCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21000(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 12732
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12733
    return-void
.end method
