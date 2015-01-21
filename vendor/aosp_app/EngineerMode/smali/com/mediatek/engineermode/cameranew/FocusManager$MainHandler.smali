.class Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/FocusManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/cameranew/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/cameranew/FocusManager;Lcom/mediatek/engineermode/cameranew/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;-><init>(Lcom/mediatek/engineermode/cameranew/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/FocusManager;

    #calls: Lcom/mediatek/engineermode/cameranew/FocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->access$000(Lcom/mediatek/engineermode/cameranew/FocusManager;)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/FocusManager$MainHandler;->this$0:Lcom/mediatek/engineermode/cameranew/FocusManager;

    #getter for: Lcom/mediatek/engineermode/cameranew/FocusManager;->mFocusIndicator:Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;
    invoke-static {v0}, Lcom/mediatek/engineermode/cameranew/FocusManager;->access$100(Lcom/mediatek/engineermode/cameranew/FocusManager;)Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cameranew/FocusIndicatorView;->clear()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
