.class Lcom/dolby/ds1appUI/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/MainActivity;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/MainActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;

    .line 119
    .local v0, gv:Lcom/dolby/ds1appUI/FragGraphicVisualizer;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "DsUI::MainActivity"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    const/4 v2, 0x0

    #setter for: Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/MainActivity;->access$002(Lcom/dolby/ds1appUI/MainActivity;Z)Z

    .line 122
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #getter for: Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/dolby/ds1appUI/MainActivity;->access$000(Lcom/dolby/ds1appUI/MainActivity;)Z

    move-result v2

    #calls: Lcom/dolby/ds1appUI/MainActivity;->registerVisualizer(Z)V
    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/MainActivity;->access$100(Lcom/dolby/ds1appUI/MainActivity;Z)V

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #getter for: Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z
    invoke-static {v1}, Lcom/dolby/ds1appUI/MainActivity;->access$000(Lcom/dolby/ds1appUI/MainActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setEnabled(Z)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "DsUI::MainActivity"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    const/4 v2, 0x1

    #setter for: Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/MainActivity;->access$002(Lcom/dolby/ds1appUI/MainActivity;Z)Z

    .line 129
    if-eqz v0, :cond_2

    .line 130
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #getter for: Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z
    invoke-static {v1}, Lcom/dolby/ds1appUI/MainActivity;->access$000(Lcom/dolby/ds1appUI/MainActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setEnabled(Z)V

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    iget-object v2, p0, Lcom/dolby/ds1appUI/MainActivity$1;->this$0:Lcom/dolby/ds1appUI/MainActivity;

    #getter for: Lcom/dolby/ds1appUI/MainActivity;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/dolby/ds1appUI/MainActivity;->access$000(Lcom/dolby/ds1appUI/MainActivity;)Z

    move-result v2

    #calls: Lcom/dolby/ds1appUI/MainActivity;->registerVisualizer(Z)V
    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/MainActivity;->access$100(Lcom/dolby/ds1appUI/MainActivity;Z)V

    goto :goto_0
.end method
