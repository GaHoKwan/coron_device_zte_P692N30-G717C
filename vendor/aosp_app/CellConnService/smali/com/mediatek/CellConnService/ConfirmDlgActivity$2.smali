.class Lcom/mediatek/CellConnService/ConfirmDlgActivity$2;
.super Ljava/lang/Object;
.source "ConfirmDlgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 291
    iput-object p1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$2;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 293
    const-string v0, "ConfirmDlgActivity"

    const-string v1, "onClick is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$2;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mNegativeExit:Z
    invoke-static {v0, v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$002(Lcom/mediatek/CellConnService/ConfirmDlgActivity;Z)Z

    .line 295
    iget-object v0, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$2;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    iget-object v1, p0, Lcom/mediatek/CellConnService/ConfirmDlgActivity$2;->this$0:Lcom/mediatek/CellConnService/ConfirmDlgActivity;

    #getter for: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->mConfirmType:I
    invoke-static {v1}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$100(Lcom/mediatek/CellConnService/ConfirmDlgActivity;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/mediatek/CellConnService/ConfirmDlgActivity;->sendConfirmResult(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/CellConnService/ConfirmDlgActivity;->access$200(Lcom/mediatek/CellConnService/ConfirmDlgActivity;IZ)V

    .line 296
    return-void
.end method
