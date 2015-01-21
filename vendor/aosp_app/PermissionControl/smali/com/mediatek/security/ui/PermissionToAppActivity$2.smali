.class Lcom/mediatek/security/ui/PermissionToAppActivity$2;
.super Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;
.source "PermissionToAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionToAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/PermissionToAppActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$2;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    invoke-direct {p0, p2}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$2;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    #calls: Lcom/mediatek/security/ui/PermissionToAppActivity;->checkUiEnabled()V
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionToAppActivity;->access$100(Lcom/mediatek/security/ui/PermissionToAppActivity;)V

    .line 111
    return-void
.end method
