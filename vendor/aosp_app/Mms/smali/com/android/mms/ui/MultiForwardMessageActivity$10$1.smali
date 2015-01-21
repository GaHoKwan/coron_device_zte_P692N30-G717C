.class Lcom/android/mms/ui/MultiForwardMessageActivity$10$1;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiForwardMessageActivity$10;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$10$1;->this$1:Lcom/android/mms/ui/MultiForwardMessageActivity$10;

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

    const/4 v1, 0x0

    .line 1062
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 1072
    :goto_0
    :sswitch_0
    return v0

    .line 1064
    :sswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1065
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$10$1;->this$1:Lcom/android/mms/ui/MultiForwardMessageActivity$10;

    iget-object v2, v2, Lcom/android/mms/ui/MultiForwardMessageActivity$10;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->finishSelf(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$600(Lcom/android/mms/ui/MultiForwardMessageActivity;I)V

    goto :goto_0

    .line 1062
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
