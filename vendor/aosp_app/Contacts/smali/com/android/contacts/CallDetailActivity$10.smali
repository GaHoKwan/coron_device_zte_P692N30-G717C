.class Lcom/android/contacts/CallDetailActivity$10;
.super Landroid/os/Handler;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$10;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1465
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1472
    :goto_0
    return-void

    .line 1467
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$10;->this$0:Lcom/android/contacts/CallDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity$10;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/CallDetailActivity;->access$2600(Lcom/android/contacts/CallDetailActivity;)[Landroid/net/Uri;

    move-result-object v1

    #calls: Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/CallDetailActivity;->access$2700(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V

    goto :goto_0

    .line 1465
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
