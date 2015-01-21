.class Lcom/android/mms/ui/EmoticonPanel$2;
.super Ljava/lang/Object;
.source "EmoticonPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonPanel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel$2;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$2;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$200(Lcom/android/mms/ui/EmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;->doAction(ILjava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$2;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #calls: Lcom/android/mms/ui/EmoticonPanel;->startDelEmoticon()V
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$300(Lcom/android/mms/ui/EmoticonPanel;)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$2;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #calls: Lcom/android/mms/ui/EmoticonPanel;->stopDelEmoticon()V
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$400(Lcom/android/mms/ui/EmoticonPanel;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
