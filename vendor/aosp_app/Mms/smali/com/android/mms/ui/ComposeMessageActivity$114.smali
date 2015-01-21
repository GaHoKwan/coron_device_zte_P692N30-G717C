.class Lcom/android/mms/ui/ComposeMessageActivity$114;
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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12712
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$114;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 12715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$114;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->convertMmsOrSmsToIpMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 12716
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 12717
    return-void
.end method
