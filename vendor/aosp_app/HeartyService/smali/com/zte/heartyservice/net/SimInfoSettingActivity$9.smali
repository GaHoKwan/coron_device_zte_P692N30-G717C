.class final Lcom/zte/heartyservice/net/SimInfoSettingActivity$9;
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

.field final synthetic val$start_correction:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$9;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$9;->val$start_correction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$9;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/zte/heartyservice/net/SimInfoSettingActivity$9;->val$start_correction:Z

    #calls: Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelfReal(Landroid/app/Activity;Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->access$700(Landroid/app/Activity;Z)V

    .line 536
    return-void
.end method
