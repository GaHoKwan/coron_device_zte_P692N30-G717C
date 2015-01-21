.class Lcom/android/mms/ui/ComposeMessageActivity$120;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showDiscardCurrentMessageDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$currentMsgId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13788
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$120;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$120;->val$currentMsgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 13791
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$120;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-wide v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$120;->val$currentMsgId:J

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendViaMmsOrSms(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$21500(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    .line 13792
    return-void
.end method
