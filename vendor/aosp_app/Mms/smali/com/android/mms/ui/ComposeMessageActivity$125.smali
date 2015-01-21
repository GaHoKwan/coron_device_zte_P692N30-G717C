.class Lcom/android/mms/ui/ComposeMessageActivity$125;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 13971
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$125;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 13974
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$125;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$125$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$125$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$125;)V

    invoke-static {v0, v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showInviteIpMsgConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 13985
    return-void
.end method
