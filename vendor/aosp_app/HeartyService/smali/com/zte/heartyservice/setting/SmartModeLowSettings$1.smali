.class Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;
.super Ljava/lang/Object;
.source "SmartModeLowSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/SmartModeLowSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    #getter for: Lcom/zte/heartyservice/setting/SmartModeLowSettings;->seekBarTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->access$100(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    invoke-virtual {v1}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01bc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    #getter for: Lcom/zte/heartyservice/setting/SmartModeLowSettings;->MIN_V:I
    invoke-static {v5}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->access$000(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)I

    move-result v5

    add-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 92
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "seekBar"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    #getter for: Lcom/zte/heartyservice/setting/SmartModeLowSettings;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->access$200(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "smart_low_value"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    #getter for: Lcom/zte/heartyservice/setting/SmartModeLowSettings;->MIN_V:I
    invoke-static {v4}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->access$000(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    const/4 v1, 0x1

    invoke-static {}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->access$300()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "smart_low_switch"

    sget-boolean v4, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 98
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$1;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutSmartLow()V

    .line 100
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenSmartLow()V

    .line 102
    .end local v0           #st:Lcom/zte/heartyservice/power/SwitchTools;
    :cond_0
    return-void
.end method
