.class Lcom/zte/heartyservice/setting/AutoUpdateSettings$1;
.super Ljava/lang/Object;
.source "AutoUpdateSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/AutoUpdateSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AutoUpdateSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AutoUpdateSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings$1;->this$0:Lcom/zte/heartyservice/setting/AutoUpdateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "isChecked"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings$1;->this$0:Lcom/zte/heartyservice/setting/AutoUpdateSettings;

    const-string v1, "autoupdate_dont_notice"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 102
    return-void
.end method
