.class Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;
.super Ljava/lang/Object;
.source "WorkingMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/videotelephone/WorkingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 64
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    const-string v3, "engineermode_vt_preferences"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    const-string v2, "working_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    const-string v2, "working_mode_detail"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    const-string v2, "EM/WorkingMode"

    const-string v3, "Working mode normal radio is clicked!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    #calls: Lcom/mediatek/engineermode/videotelephone/WorkingMode;->onClicked()V
    invoke-static {v2}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->access$300(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)V

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v2, "working_mode"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v2, "working_mode_detail"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    const-string v2, "EM/WorkingMode"

    const-string v3, "Media loopback stack radio is clicked!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    #calls: Lcom/mediatek/engineermode/videotelephone/WorkingMode;->launchVTLoopbackActivity()V
    invoke-static {v2}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->access$000(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)V

    goto :goto_1

    .line 83
    :pswitch_3
    const-string v2, "working_mode"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v2, "working_mode_detail"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    const-string v2, "EM/WorkingMode"

    const-string v3, "Media loopback transceiver radio is clicked!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    #calls: Lcom/mediatek/engineermode/videotelephone/WorkingMode;->launchVTLoopbackActivity()V
    invoke-static {v2}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->access$000(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)V

    goto :goto_1

    .line 90
    :pswitch_4
    const-string v2, "working_mode"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v2, "working_mode_detail"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    const-string v2, "EM/WorkingMode"

    const-string v3, "Network loopback stack radio is clicked!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 96
    :pswitch_5
    const-string v2, "working_mode"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v2, "working_mode_detail"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    const-string v2, "EM/WorkingMode"

    const-string v3, "Network loopback service radio is clicked!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    :pswitch_6
    const-string v2, "working_mode"

    const-string v3, "3"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    const-string v2, "EM/WorkingMode"

    const-string v3, "Working mode test file radio is clicked!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 107
    :pswitch_7
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    #getter for: Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mMediaLoopRadiogroup:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->access$100(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    #getter for: Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mNetworkLoopRadiogroup:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->access$200(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 112
    :pswitch_8
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    #getter for: Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mMediaLoopRadiogroup:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->access$100(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/WorkingMode$1;->this$0:Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    #getter for: Lcom/mediatek/engineermode/videotelephone/WorkingMode;->mNetworkLoopRadiogroup:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/videotelephone/WorkingMode;->access$200(Lcom/mediatek/engineermode/videotelephone/WorkingMode;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04d7
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
