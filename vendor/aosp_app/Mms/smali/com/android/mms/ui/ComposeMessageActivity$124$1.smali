.class Lcom/android/mms/ui/ComposeMessageActivity$124$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$124;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$124;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$124;)V
    .locals 0
    .parameter

    .prologue
    .line 13958
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$124$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$124;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 13960
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$124$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$124;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$124;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hiddeInvitePanel()V

    .line 13962
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$124$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$124;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$124;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$124$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$124;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity$124;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->checkCurrentIpMessageServiceStatus(Landroid/app/Activity;ZLandroid/os/Handler;I)Z

    .line 13965
    return-void
.end method
