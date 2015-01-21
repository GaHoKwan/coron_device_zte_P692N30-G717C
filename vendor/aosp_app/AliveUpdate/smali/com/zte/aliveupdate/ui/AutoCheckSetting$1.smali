.class Lcom/zte/aliveupdate/ui/AutoCheckSetting$1;
.super Ljava/lang/Object;
.source "AutoCheckSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aliveupdate/ui/AutoCheckSetting;->initAutoCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aliveupdate/ui/AutoCheckSetting;


# direct methods
.method constructor <init>(Lcom/zte/aliveupdate/ui/AutoCheckSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting$1;->this$0:Lcom/zte/aliveupdate/ui/AutoCheckSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user change detective state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/util/Log;->debug(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_AUTO_CHECK_OPENED"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting$1;->this$0:Lcom/zte/aliveupdate/ui/AutoCheckSetting;

    const/4 v1, 0x1

    #setter for: Lcom/zte/aliveupdate/ui/AutoCheckSetting;->isChanged:Z
    invoke-static {v0, v1}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->access$002(Lcom/zte/aliveupdate/ui/AutoCheckSetting;Z)Z

    .line 80
    iget-object v0, p0, Lcom/zte/aliveupdate/ui/AutoCheckSetting$1;->this$0:Lcom/zte/aliveupdate/ui/AutoCheckSetting;

    #calls: Lcom/zte/aliveupdate/ui/AutoCheckSetting;->eventInit(Z)V
    invoke-static {v0, p2}, Lcom/zte/aliveupdate/ui/AutoCheckSetting;->access$100(Lcom/zte/aliveupdate/ui/AutoCheckSetting;Z)V

    .line 81
    return-void
.end method
