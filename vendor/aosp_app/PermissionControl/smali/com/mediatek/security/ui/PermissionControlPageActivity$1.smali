.class Lcom/mediatek/security/ui/PermissionControlPageActivity$1;
.super Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;
.source "PermissionControlPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionControlPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$1;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    invoke-direct {p0, p2}, Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$1;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    #calls: Lcom/mediatek/security/ui/PermissionControlPageActivity;->checkUiEnabled()V
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->access$500(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V

    .line 235
    return-void
.end method
