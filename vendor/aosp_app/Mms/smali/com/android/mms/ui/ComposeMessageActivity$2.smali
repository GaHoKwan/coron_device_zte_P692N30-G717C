.class Lcom/android/mms/ui/ComposeMessageActivity$2;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
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
    .line 699
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 702
    const-string v0, "Mms/noti"

    const-string v1, "notificationsReceived(): hide typing status."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTypingStatusView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTypingStatusView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 706
    :cond_0
    return-void
.end method