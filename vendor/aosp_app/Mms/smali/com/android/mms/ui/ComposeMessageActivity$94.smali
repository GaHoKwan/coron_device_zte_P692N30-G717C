.class Lcom/android/mms/ui/ComposeMessageActivity$94;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initShareAndEmoticonRessource()V
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
    .line 10542
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$94;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "emotionName"

    .prologue
    .line 10545
    packed-switch p1, :pswitch_data_0

    .line 10562
    :cond_0
    :goto_0
    return-void

    .line 10547
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$94;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->insertEmoticon(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18400(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 10550
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$94;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->deleteEmoticon()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 10554
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$94;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->checkCurrentIpMessageServiceStatus(Landroid/app/Activity;ZLandroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10555
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$94;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->sendEmoticon(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18600(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 10545
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
