.class final Lcom/zte/heartyservice/net/SimInfoSettingActivity$7;
.super Ljava/lang/Object;
.source "SimInfoSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/SimInfoSettingActivity;->showNetworkDialg(ILandroid/app/Activity;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$subscription:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    iput p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$7;->val$subscription:I

    iput-object p2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "subscription"

    iget v2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$7;->val$subscription:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    iget-object v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$7;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/AppUtils;->showAdjDialog(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 503
    return-void
.end method
