.class Lcom/mediatek/security/plugin/PermissionControlEnabler$1;
.super Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;
.source "PermissionControlEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/plugin/PermissionControlEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/plugin/PermissionControlEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/security/plugin/PermissionControlEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler$1;->this$0:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    invoke-direct {p0, p2}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler$1;->this$0:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    #getter for: Lcom/mediatek/security/plugin/PermissionControlEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/security/plugin/PermissionControlEnabler;->access$000(Lcom/mediatek/security/plugin/PermissionControlEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/security/service/PermControlUtils;->isInHouseEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 48
    .local v0, enable:Z
    const-string v1, "PermControlEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange(), update switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lcom/mediatek/security/plugin/PermissionControlEnabler$1;->this$0:Lcom/mediatek/security/plugin/PermissionControlEnabler;

    #getter for: Lcom/mediatek/security/plugin/PermissionControlEnabler;->mSwitchPreference:Lcom/mediatek/security/plugin/CustomizedSwitchPreference;
    invoke-static {v1}, Lcom/mediatek/security/plugin/PermissionControlEnabler;->access$100(Lcom/mediatek/security/plugin/PermissionControlEnabler;)Lcom/mediatek/security/plugin/CustomizedSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 50
    return-void
.end method
