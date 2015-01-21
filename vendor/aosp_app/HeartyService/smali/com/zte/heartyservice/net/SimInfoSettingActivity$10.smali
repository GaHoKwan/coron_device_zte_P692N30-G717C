.class final Lcom/zte/heartyservice/net/SimInfoSettingActivity$10;
.super Ljava/lang/Object;
.source "SimInfoSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$10;->val$activity:Landroid/app/Activity;

    #calls: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->checkActivityFinish(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$800(Landroid/app/Activity;)V

    .line 548
    return-void
.end method
