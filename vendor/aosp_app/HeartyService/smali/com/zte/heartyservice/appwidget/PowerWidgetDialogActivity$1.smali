.class Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;
.super Landroid/os/Handler;
.source "PowerWidgetDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$000(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Lcom/zte/heartyservice/power/SwitchTools;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/power/SwitchTools;->convertPositionToId(I)I

    move-result v0

    .line 50
    .local v0, SwitchId:I
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$100(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "current_mode_id"

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, modeId:I
    if-eq v0, v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$100(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "current_mode_id"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$100(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "radio_position"

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$1;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mSwitchTools:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$000(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Lcom/zte/heartyservice/power/SwitchTools;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 56
    :cond_0
    return-void
.end method
