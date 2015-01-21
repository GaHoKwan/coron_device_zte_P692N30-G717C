.class Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;
.super Lcom/mediatek/mtklogger/settings/LogSwitchListener;
.source "MobileLogSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/settings/MobileLogSettings;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/settings/MobileLogSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/MobileLogSettings;

    invoke-direct {p0}, Lcom/mediatek/mtklogger/settings/LogSwitchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/MobileLogSettings;

    #getter for: Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->access$000(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mobilelog_switch"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/MobileLogSettings;

    #calls: Lcom/mediatek/mtklogger/settings/MobileLogSettings;->setAllPreferencesEnable(Z)V
    invoke-static {v0, p2}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->access$100(Lcom/mediatek/mtklogger/settings/MobileLogSettings;Z)V

    .line 168
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/MobileLogSettings;

    #getter for: Lcom/mediatek/mtklogger/settings/MobileLogSettings;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->access$000(Lcom/mediatek/mtklogger/settings/MobileLogSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mobilelog_switch"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/MobileLogSettings$2;->this$0:Lcom/mediatek/mtklogger/settings/MobileLogSettings;

    #calls: Lcom/mediatek/mtklogger/settings/MobileLogSettings;->setAllPreferencesEnable(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/mtklogger/settings/MobileLogSettings;->access$100(Lcom/mediatek/mtklogger/settings/MobileLogSettings;Z)V

    .line 176
    const/4 v1, 0x1

    return v1
.end method
