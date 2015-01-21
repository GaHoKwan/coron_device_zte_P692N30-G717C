.class final Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$2;
.super Ljava/lang/Object;
.source "TrafficCorrectionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->realShowFailedDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$2;->val$args:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->showAdjDialog(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
