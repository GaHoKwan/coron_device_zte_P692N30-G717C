.class Lcom/android/mms/ui/MessagingPreferenceActivity$10;
.super Landroid/os/Handler;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->newMainHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1299
    const v0, 0x7f0b00ab

    .line 1300
    .local v0, output:I
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1322
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->showToast(I)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1900(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    .line 1323
    return-void

    .line 1302
    :pswitch_0
    const v0, 0x7f0b00a5

    .line 1303
    goto :goto_0

    .line 1305
    :pswitch_1
    const v0, 0x7f0b00a8

    .line 1306
    goto :goto_0

    .line 1308
    :pswitch_2
    const v0, 0x7f0b00a6

    .line 1309
    goto :goto_0

    .line 1311
    :pswitch_3
    const v0, 0x7f0b00a7

    .line 1312
    goto :goto_0

    .line 1314
    :pswitch_4
    const v0, 0x7f0b00ab

    .line 1315
    goto :goto_0

    .line 1317
    :pswitch_5
    const v0, 0x7f0b00ae

    .line 1318
    goto :goto_0

    .line 1300
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
