.class Lcom/mediatek/security/ui/AppToPermissionActivity$4;
.super Ljava/lang/Object;
.source "AppToPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/security/ui/AppToPermissionActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/AppToPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$4;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 248
    const-string v0, "AppToPermActivity"

    const-string v1, "dialog dismiss, remove it"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$4;->this$0:Lcom/mediatek/security/ui/AppToPermissionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 250
    return-void
.end method
