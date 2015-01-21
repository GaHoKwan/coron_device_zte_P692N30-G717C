.class Lcom/mediatek/security/ui/AppToPermissionActivity$2;
.super Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;
.source "AppToPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppToPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/AppToPermissionActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$2;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    invoke-direct {p0, p2}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$2;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    #calls: Lcom/mediatek/security/ui/AppToPermissionActivity;->checkUiEnabled()V
    invoke-static {v0}, Lcom/mediatek/security/ui/AppToPermissionActivity;->access$200(Lcom/mediatek/security/ui/AppToPermissionActivity;)V

    .line 126
    return-void
.end method
