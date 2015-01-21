.class Lcom/mediatek/CellConnService/ConfirmDlgActivity$5;
.super Ljava/lang/Object;
.source "ConfirmDlgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/CellConnService/ConfirmDlgActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$5;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isDown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 332
    const-string v2, "ConfirmDlgActivity"

    const-string v3, "home key is down, cancel request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$5;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v2, v0}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 334
    iget-object v2, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$5;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v3, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$5;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v3}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v3

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v2, v3, v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    .line 337
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
