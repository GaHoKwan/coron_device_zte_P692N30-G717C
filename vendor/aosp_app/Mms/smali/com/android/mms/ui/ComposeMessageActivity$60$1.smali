.class Lcom/android/mms/ui/ComposeMessageActivity$60$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$60;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$60;)V
    .locals 0
    .parameter

    .prologue
    .line 6877
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6880
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$60$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$60;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$60;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V
    invoke-static {v0, v1, v2, v2, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3900(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V

    .line 6881
    return-void
.end method
