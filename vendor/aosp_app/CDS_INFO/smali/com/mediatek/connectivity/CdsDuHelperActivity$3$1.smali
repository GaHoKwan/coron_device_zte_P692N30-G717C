.class Lcom/mediatek/connectivity/CdsDuHelperActivity$3$1;
.super Ljava/lang/Object;
.source "CdsDuHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsDuHelperActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/connectivity/CdsDuHelperActivity$3;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsDuHelperActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$1;->this$1:Lcom/mediatek/connectivity/CdsDuHelperActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 138
    return-void
.end method
