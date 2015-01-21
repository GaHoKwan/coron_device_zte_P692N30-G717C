.class Lcom/android/mms/ui/ImportSmsActivity$1;
.super Landroid/os/Handler;
.source "ImportSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ImportSmsActivity;->newMainHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ImportSmsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ImportSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/ImportSmsActivity$1;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 120
    const v0, 0x7f0b00aa

    .line 121
    .local v0, output:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ImportSmsActivity$1;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #calls: Lcom/android/mms/ui/ImportSmsActivity;->showToast(I)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ImportSmsActivity;->access$000(Lcom/android/mms/ui/ImportSmsActivity;I)V

    .line 138
    return-void

    .line 123
    :pswitch_0
    const v0, 0x7f0b00aa

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/ImportSmsActivity$1;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    #calls: Lcom/android/mms/ui/ImportSmsActivity;->showToast(I)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ImportSmsActivity;->access$000(Lcom/android/mms/ui/ImportSmsActivity;I)V

    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/ImportSmsActivity$1;->this$0:Lcom/android/mms/ui/ImportSmsActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 128
    :pswitch_1
    const v0, 0x7f0b00a6

    .line 129
    goto :goto_0

    .line 131
    :pswitch_2
    const v0, 0x7f0b00a7

    .line 132
    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
