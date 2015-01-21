.class Lcom/mediatek/settings/plugin/ZonePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/ZonePicker;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/ZonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const v5, 0x7f030033

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    #getter for: Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ZonePicker;->access$000(Lcom/mediatek/settings/plugin/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    invoke-virtual {v3}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 115
    .local v1, position:I
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/settings/plugin/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;I)Landroid/widget/SimpleAdapter;

    move-result-object v4

    #setter for: Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v3, v4}, Lcom/mediatek/settings/plugin/ZonePicker;->access$002(Lcom/mediatek/settings/plugin/ZonePicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 117
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    #getter for: Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v4}, Lcom/mediatek/settings/plugin/ZonePicker;->access$000(Lcom/mediatek/settings/plugin/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    invoke-virtual {v3, v1}, Landroid/app/ListFragment;->setSelection(I)V

    .line 128
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #position:I
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INPUT_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string v3, "INPUT_CONTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, str:Ljava/lang/String;
    const-string v3, "ZonePicker"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    #setter for: Lcom/mediatek/settings/plugin/ZonePicker;->mQueryString:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/mediatek/settings/plugin/ZonePicker;->access$102(Lcom/mediatek/settings/plugin/ZonePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 125
    .restart local v0       #activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/settings/plugin/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;I)Landroid/widget/SimpleAdapter;

    move-result-object v4

    #setter for: Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v3, v4}, Lcom/mediatek/settings/plugin/ZonePicker;->access$002(Lcom/mediatek/settings/plugin/ZonePicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 126
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ZonePicker$1;->this$0:Lcom/mediatek/settings/plugin/ZonePicker;

    #getter for: Lcom/mediatek/settings/plugin/ZonePicker;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v4}, Lcom/mediatek/settings/plugin/ZonePicker;->access$000(Lcom/mediatek/settings/plugin/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
