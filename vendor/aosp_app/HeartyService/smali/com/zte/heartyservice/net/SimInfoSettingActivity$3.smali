.class final Lcom/zte/heartyservice/net/SimInfoSettingActivity$3;
.super Ljava/lang/Object;
.source "SimInfoSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/SimInfoSettingActivity;->showNetworkDialg(ILandroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$3;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showAdjDialog(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 406
    return-void
.end method
