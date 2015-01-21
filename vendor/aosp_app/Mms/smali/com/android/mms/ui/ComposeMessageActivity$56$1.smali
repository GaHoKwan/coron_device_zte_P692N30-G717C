.class Lcom/android/mms/ui/ComposeMessageActivity$56$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity$56;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$56;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$56;)V
    .locals 0
    .parameter

    .prologue
    .line 6636
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$56$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$56;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 6638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$56$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$56;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$56;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6639
    return-void
.end method
