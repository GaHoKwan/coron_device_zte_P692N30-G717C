.class Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;
.super Ljava/lang/Object;
.source "NetworkSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "pos"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 102
    iget-object v3, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$000(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 106
    .local v2, settingsNetworkMode:I
    iget-object v3, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    iput v2, v3, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mCurrentSettingsNetworkMode:I

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, selectNetworkMode:I
    packed-switch p3, :pswitch_data_0

    .line 121
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mFirstEnter:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$100(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 122
    iget-object v3, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #setter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mFirstEnter:Z
    invoke-static {v3, v6}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$102(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;Z)Z

    .line 131
    :goto_1
    return-void

    .line 110
    :pswitch_0
    const/4 v1, 0x4

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    const/4 v1, 0x5

    .line 114
    goto :goto_0

    .line 116
    :pswitch_2
    const/4 v1, 0x6

    .line 117
    goto :goto_0

    .line 124
    :cond_0
    const-string v3, "EM/NetworkMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectNetworkMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, p0, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity$1;->this$0:Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;

    #getter for: Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v3}, Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;->access$200(Lcom/mediatek/engineermode/cdmanetworkselect/NetworkSelectActivity;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 135
    return-void
.end method
