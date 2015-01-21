.class Lcom/android/mms/ui/ComposeMessageActivity$123$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$123;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$123;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$123;)V
    .locals 0
    .parameter

    .prologue
    .line 13936
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$123$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$123;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 13938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$123$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$123;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$123;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->hiddeInvitePanel()V

    .line 13940
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$123$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$123;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$123;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->checkCurrentIpMessageServiceStatus(Landroid/app/Activity;ZLandroid/os/Handler;I)Z

    .line 13943
    return-void
.end method
