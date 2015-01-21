.class Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;
.super Ljava/lang/Object;
.source "IpMessageEmoticonPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;


# direct methods
.method constructor <init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #getter for: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$000(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;->doAction(ILjava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #calls: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->startDelEmoticon()V
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$100(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;->this$0:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;

    #calls: Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->stopDelEmoticon()V
    invoke-static {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->access$200(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
