.class Lcom/mediatek/connectivity/CdsConnectivityActivity$2;
.super Ljava/lang/Object;
.source "CdsConnectivityActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsConnectivityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsConnectivityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$2;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$2;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

    #calls: Lcom/mediatek/connectivity/CdsConnectivityActivity;->setCaptivePortalCheckEnabled(Z)V
    invoke-static {v0, p2}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->access$100(Lcom/mediatek/connectivity/CdsConnectivityActivity;Z)V

    .line 144
    return-void
.end method
