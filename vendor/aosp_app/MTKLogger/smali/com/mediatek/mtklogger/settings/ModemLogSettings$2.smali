.class Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;
.super Lcom/mediatek/mtklogger/settings/LogSwitchListener;
.source "ModemLogSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/settings/ModemLogSettings;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/settings/ModemLogSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/settings/ModemLogSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/ModemLogSettings;

    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/LogSwitchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/ModemLogSettings;

    #getter for: Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->access$000(Lcom/mediatek/mtklogger/settings/ModemLogSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modemlog_switch"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/ModemLogSettings;

    #calls: Lcom/mediatek/mtklogger/settings/ModemLogSettings;->setAllPreferencesEnable(Z)V
    invoke-static {v0, p2}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->access$100(Lcom/mediatek/mtklogger/settings/ModemLogSettings;Z)V

    .line 153
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 158
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/ModemLogSettings;

    #getter for: Lcom/mediatek/mtklogger/settings/ModemLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->access$000(Lcom/mediatek/mtklogger/settings/ModemLogSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "modemlog_switch"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/ModemLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/ModemLogSettings;

    #calls: Lcom/mediatek/mtklogger/settings/ModemLogSettings;->setAllPreferencesEnable(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/mtklogger/settings/ModemLogSettings;->access$100(Lcom/mediatek/mtklogger/settings/ModemLogSettings;Z)V

    .line 161
    const/4 v1, 0x1

    return v1
.end method
