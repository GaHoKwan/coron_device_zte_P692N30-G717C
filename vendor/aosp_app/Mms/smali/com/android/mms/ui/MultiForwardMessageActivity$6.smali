.class Lcom/android/mms/ui/MultiForwardMessageActivity$6;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;->showResultDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$6;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 766
    sparse-switch p2, :sswitch_data_0

    .line 775
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 768
    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$6;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    const/4 v2, -0x1

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->finishSelf(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$600(Lcom/android/mms/ui/MultiForwardMessageActivity;I)V

    goto :goto_0

    .line 766
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
