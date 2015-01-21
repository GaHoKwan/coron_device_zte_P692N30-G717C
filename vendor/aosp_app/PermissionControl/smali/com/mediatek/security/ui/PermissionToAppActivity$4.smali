.class Lcom/mediatek/security/ui/PermissionToAppActivity$4;
.super Ljava/lang/Object;
.source "PermissionToAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/security/ui/PermissionToAppActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/PermissionToAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$4;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 213
    const-string v0, "PermToAppActivity"

    const-string v1, "dialog dismiss, remove it"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$4;->this$0:Lcom/mediatek/security/ui/PermissionToAppActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 215
    return-void
.end method
